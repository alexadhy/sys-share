package fakedata_test

import (
	"io/ioutil"
	"testing"

	"github.com/stretchr/testify/require"

	"go.amplifyedge.org/sys-share-v2/sys-account/service/go/pkg/fakedata"
)

func TestBootstrapFakeData(t *testing.T) {
	_, _, _, fake, err := fakedata.BootstrapFakeData("amplify-cms.org")
	require.NoError(t, err)
	b, err := fake.MarshalPretty()
	require.NoError(t, err)

	t.Logf("fakedata generated: %v", fake)

	require.NoError(t, ioutil.WriteFile("./bs-sys-account.json", b, 0644))

	b, err = fake.MarshalYAML()
	require.NoError(t, err)

	require.NoError(t, ioutil.WriteFile("./bs-sys-account.yml", b, 0644))

	bmd, err := fakedata.BootstrapFromFilepath("./bs-sys-account.json")
	require.NoError(t, err)

	bmd, err = fakedata.BootstrapFromFilepath("./bs-sys-account.yml")
	require.NoError(t, err)

	nsps := bmd.GetOrgs()
	require.NotEmpty(t, nsps)
}
