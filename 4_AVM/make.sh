
# Deploy demo 1
goal app create --creator FOOKHE2MRNR3JWRPDPY36KMJX4RGNBNJ5GVJI36QN47LPLCTGG3TXS7ZVM \
--approval-prog /data/workshops/bootcamp_repo/4_AVM/demo1.teal \
--clear-prog /data/workshops/bootcamp_repo/4_AVM/clear.teal \
--local-ints 0 --local-byteslices 0 --global-ints 0 --global-byteslices 0

# Debug demo 1
goal app call -f FOOKHE2MRNR3JWRPDPY36KMJX4RGNBNJ5GVJI36QN47LPLCTGG3TXS7ZVM --app-id 328 \
--out=dump.dr --dryrun-dump

tealdbg debug /data/workshops/bootcamp_repo/4_AVM/demo1.teal -d dump.dr --listen 0.0.0.0

# Deploy demo 2
goal app create --creator FOOKHE2MRNR3JWRPDPY36KMJX4RGNBNJ5GVJI36QN47LPLCTGG3TXS7ZVM \
--approval-prog /data/workshops/bootcamp_repo/4_AVM/demo2.teal \
--clear-prog /data/workshops/bootcamp_repo/4_AVM/clear.teal \
--local-ints 0 --local-byteslices 1 --global-ints 0 --global-byteslices 1

# Debug demo 2

goal app optin -f VLPUJQ6XOMEPMIGPQVBB5D6RKDSU2EX5BB4Y7QLQR7X44JZRBCLJ52FBL4 --app-id 335

goal app call \
-f FOOKHE2MRNR3JWRPDPY36KMJX4RGNBNJ5GVJI36QN47LPLCTGG3TXS7ZVM \
--app-id 331 \
--app-account "VLPUJQ6XOMEPMIGPQVBB5D6RKDSU2EX5BB4Y7QLQR7X44JZRBCLJ52FBL4" \
--app-arg "str:register_data" \
--app-arg "str:test_data" \
--out=dump2.dr --dryrun-dump

tealdbg debug /data/workshops/bootcamp_repo/4_AVM/demo2.teal -d dump2.dr --listen 0.0.0.0