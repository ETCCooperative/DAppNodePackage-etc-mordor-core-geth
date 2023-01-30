ARG UPSTREAM_VERSION

FROM etclabscore/core-geth:${UPSTREAM_VERSION}

ENTRYPOINT []
CMD geth \
    --classic \
    --port=$P2P_PORT \
    --http \
    --http.addr=0.0.0.0 \
    --http.corsdomain="*" \
    --http.vhosts="*" \
    --ws \
    --ws.addr=0.0.0.0 \
    --ws.origins="*" \
    --syncmode=${SYNCMODE:-snap} \
    $EXTRA_OPTS
