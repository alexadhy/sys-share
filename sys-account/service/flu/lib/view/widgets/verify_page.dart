import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:stacked/stacked.dart';
import 'package:sys_core/pkg/widgets/notification.dart';
import 'package:sys_share_sys_account_service/pkg/i18n/sys_account_localization.dart';
import 'package:sys_share_sys_account_service/pkg/shared_widgets/dialog_footer.dart';
import 'package:sys_share_sys_account_service/pkg/shared_widgets/dialog_header.dart';
import 'package:sys_share_sys_account_service/view/widgets/view_model/verify_view_model.dart';

class VerifyPage extends StatefulWidget {
  final String id;
  final Function callback;

  const VerifyPage({Key key, this.callback, this.id = ''}) : super(key: key);

  @override
  VerifyPageState createState() => VerifyPageState();
}

class VerifyPageState extends State<VerifyPage> {
  final _verifyTokenCtrl = TextEditingController();
  final _verifyTokenFocusNode = FocusNode();

  @override
  void dispose() {
    _verifyTokenCtrl.dispose();
    _verifyTokenFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext) {
    return ViewModelBuilder<VerifyAccountViewModel>.reactive(
      viewModelBuilder: () => VerifyAccountViewModel(accountId: widget.id),
      onModelReady: (VerifyAccountViewModel model) {
        _verifyTokenCtrl.text = model.getVerifyToken;
      },
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 400,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Column(
                children: [
                  SharedDialogHeader(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      SysAccountLocalizations.of(context)
                          .translate('verifyAccount'),
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
                      focusNode: _verifyTokenFocusNode,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      controller: _verifyTokenCtrl,
                      autofocus: false,
                      onChanged: (v) => model.setVerifyToken(v),
                      enabled: model.isVerifyTokenEnabled,
                      obscureText: model.isObscured,
                      onSubmitted: (v) {
                        _verifyTokenFocusNode.unfocus();
                      },
                      style: TextStyle(
                          color: Theme.of(context).textTheme.headline6.color),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            model.isObscured
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          onPressed: () {
                            model.setObscured(!model.isObscured);
                          },
                        ),
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
                            .translate('verificationToken'),
                        fillColor: Theme.of(context).dialogBackgroundColor,
                        errorText: model.validateVerificationToken(),
                        errorStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.redAccent,
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
                              onPressed: model.isVerificationValid
                                  ? () async {
                                      await model.submitVerifyToken().then((_) {
                                        if (model.successMsg.isNotEmpty) {
                                          Navigator.pop(context);
                                          notify(
                                              context: context,
                                              message: model.successMsg,
                                              error: false);
                                          if (widget.callback != null) {
                                            widget.callback();
                                          }
                                          Modular.to.pushNamed('/');
                                        } else {
                                          notify(
                                              context: context,
                                              message: model.errMsg,
                                              error: true);
                                        }
                                      });
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
                                              new AlwaysStoppedAnimation<Color>(
                                            Colors.white,
                                          ),
                                        ),
                                      )
                                    : Text(
                                        sysAccountTranslate('verifyAccount'),
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
                  SharedDialogFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
