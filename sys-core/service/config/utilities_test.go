package config_test

import (
	"github.com/stretchr/testify/require"
	utilities "go.amplifyedge.org/sys-share-v2/sys-core/service/config"
	"testing"
	"time"
)

func TestGenRandomByteSlice(t *testing.T) {
	randomBytes, err := utilities.GenRandomByteSlice(32)
	require.NoError(t, err)
	t.Logf("Generated random byte: %s", string(randomBytes))
}

func TestConvertTimestamps(t *testing.T) {
	nanos := int64(1617409531716140800)
	u := time.Unix(0, nanos).UTC()
	require.NotEqual(t, "", u.String())
	t.Log(u.String())
	ts := utilities.UnixToUtcTS(nanos)
	t.Log(ts.String())
	require.NotEqual(t, nil, ts)
}