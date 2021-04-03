import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:stacked/stacked.dart';
import 'package:sys_core/sys_core.dart';
import 'package:sys_share_sys_account_service/pkg/i18n/sys_account_localization.dart';
import 'package:sys_share_sys_account_service/pkg/routes/paths.dart';
import 'package:sys_share_sys_account_service/pkg/shared_widgets/dialog_footer.dart';
import 'package:sys_share_sys_account_service/pkg/shared_widgets/dialog_header.dart';
import 'package:sys_share_sys_account_service/rpc/v2/sys_account_models.pb.dart';
import 'package:sys_share_sys_account_service/view/widgets/forgot_password_dialog.dart';
import 'package:sys_share_sys_account_service/view/widgets/view_model/account_view_model.dart';
import 'package:meta/meta.dart';

class AuthDialog extends StatefulWidget {
  final Function _callback;

  // final GlobalKey<NavigatorState> navigatorKey;
  final UserRoles userRole;
  final bool isSignIn;

  const AuthDialog(
      {Key key,
      @required Function callback,
      // @required this.navigatorKey,
      this.isSignIn = true,
      this.userRole})
      : _callback = callback,
        super(key: key);

  @override
  AuthDialogState createState() => AuthDialogState();
}

class AuthDialogState extends State<AuthDialog> {
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  // GlobalKey<NavigatorState> get navigatorKey => widget.navigatorKey;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext) {
    return ViewModelBuilder<AccountViewModel>.reactive(
      viewModelBuilder: () => AccountViewModel(role: widget.userRole),
      onModelReady: (AccountViewModel model) {
        model.setIsLogin(widget.isSignIn);
        _emailCtrl.text = model.getEmail;
        _passwordCtrl.text = model.getPassword;
      },
      builder: (context, model, child) => Dialog(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 400,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: AutofillGroup(
                child: Column(
                  children: [
                    SharedDialogHeader(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        SysAccountLocalizations.of(context).translate('email'),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Theme.of(context).textTheme.subtitle2.color,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        autofillHints:
                            model.isEmailEnabled ? [AutofillHints.email] : null,
                        focusNode: _emailFocusNode,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        controller: _emailCtrl,
                        autofocus: false,
                        onChanged: (v) => model.setEmail(v),
                        enabled: model.isEmailEnabled,
                        onSubmitted: (v) {
                          _emailFocusNode.unfocus();
                          FocusScope.of(context)
                              .requestFocus(_passwordFocusNode);
                        },
                        style: TextStyle(
                            color: Theme.of(context).textTheme.headline6.color),
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Theme.of(context)
                                  .dialogBackgroundColor
                                  .withOpacity(0.8),
                              width: 3,
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(
                            color: Colors.blueGrey[300],
                          ),
                          hintText: SysAccountLocalizations.of(context)
                              .translate('emailHint'),
                          fillColor: Theme.of(context).dialogBackgroundColor,
                          errorText: model.validateEmailText(),
                          errorStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 8,
                      ),
                      child: Text(
                        SysAccountLocalizations.of(context)
                            .translate('password'),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Theme.of(context).textTheme.subtitle2.color,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 3,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        autofillHints: model.isPasswordEnabled
                            ? [AutofillHints.password]
                            : null,
                        focusNode: _passwordFocusNode,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        controller: _passwordCtrl,
                        obscureText: model.isPasswordObscured,
                        autofocus: false,
                        onChanged: (v) => model.setPassword(v),
                        enabled: model.isPasswordEnabled,
                        onSubmitted: (v) {
                          _passwordFocusNode.unfocus();
                          FocusScope.of(context)
                              .requestFocus(_passwordFocusNode);
                        },
                        style: TextStyle(
                            color: Theme.of(context).textTheme.headline6.color),
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Theme.of(context)
                                  .dialogBackgroundColor
                                  .withOpacity(0.8),
                              width: 3,
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(
                            color: Colors.blueGrey[300],
                          ),
                          hintText: SysAccountLocalizations.of(context)
                              .translate('passwordHint'),
                          fillColor: Theme.of(context).dialogBackgroundColor,
                          errorText: model.validatePasswordText(),
                          errorStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.redAccent,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              model.isPasswordObscured
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColor,
                            ),
                            onPressed: () {
                              model.setPasswordObscured(
                                  !model.isPasswordObscured);
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              width: double.maxFinite,
                              child: FlatButton(
                                color: Colors.blueGrey[700],
                                disabledColor: Colors.grey[400],
                                hoverColor: Colors.blueGrey[900],
                                highlightColor: Colors.black,
                                onPressed: model.isLogin
                                    ? model.isLoginParamValid
                                        ? () async {
                                            await model.login().then((_) {
                                              if (model.errMsg.isNotEmpty) {
                                                notify(
                                                  context: context,
                                                  message: model.errMsg,
                                                  error: true,
                                                );
                                              } else {
                                                notify(
                                                  context: context,
                                                  message: model.successMsg,
                                                  error: false,
                                                );
                                                widget._callback();
                                              }
                                            });
                                          }
                                        : null
                                    : model.isRegisterParamValid
                                        ? () async {
                                            await model.register().then(
                                              (_) {
                                                if (model.errMsg.isNotEmpty) {
                                                  notify(
                                                      context: context,
                                                      message: model.errMsg,
                                                      error: true);
                                                } else {
                                                  notify(
                                                      context: context,
                                                      message: model.successMsg,
                                                      error: false);
                                                  Modular.to.pushNamed(
                                                      Modular.get<Paths>()
                                                          .sysAccountVerify
                                                          .replaceAll(':id',
                                                              model.accountId),
                                                      arguments: {
                                                        'callback':
                                                            widget._callback
                                                      });
                                                }
                                              },
                                            );
                                          }
                                        : null,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 15.0,
                                    bottom: 15.0,
                                  ),
                                  child: model.buzy
                                      ? SizedBox(
                                          height: 16,
                                          width: 16,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                            valueColor:
                                                new AlwaysStoppedAnimation<
                                                    Color>(
                                              Colors.white,
                                            ),
                                          ),
                                        )
                                      : Text(
                                          model.isLogin
                                              ? SysAccountLocalizations.of(
                                                      context)
                                                  .translate('signIn')
                                              : SysAccountLocalizations.of(
                                                      context)
                                                  .translate('signUp'),
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              width: double.maxFinite,
                              child: TextButton(
                                onPressed: () =>
                                    model.setIsLogin(!model.isLogin),
                                child: Text(
                                  model.isLogin
                                      ? SysAccountLocalizations.of(context)
                                          .translate('signUp')
                                      : SysAccountLocalizations.of(context)
                                          .translate('signIn'),
                                  style: TextStyle(
                                    color: Colors.blue[500],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              width: double.maxFinite,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) =>
                                        ForgotPasswordDialog(),
                                  );
                                },
                                child: Text(
                                  SysAccountLocalizations.of(context)
                                      .translate('forgotPassword'),
                                  style: TextStyle(
                                    color: Colors.blue[500],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SharedDialogFooter(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
