# Deploy Application
goal app create --creator FOOKHE2MRNR3JWRPDPY36KMJX4RGNBNJ5GVJI36QN47LPLCTGG3TXS7ZVM \
--approval-prog /data/workshops/bootcamp_repo/6_smart_contract/approval.teal \
--clear-prog /data/workshops/bootcamp_repo/6_smart_contract/clear.teal \
--local-ints 1 --local-byteslices 1 --global-ints 0 --global-byteslices 1

# Optin to application
goal app optin -f VLPUJQ6XOMEPMIGPQVBB5D6RKDSU2EX5BB4Y7QLQR7X44JZRBCLJ52FBL4 --app-id 346

# Verify local and global state
goal app read --global --app-id 346 --guess-format

goal app read --local -f VLPUJQ6XOMEPMIGPQVBB5D6RKDSU2EX5BB4Y7QLQR7X44JZRBCLJ52FBL4 --app-id 346 --guess-format

# Call Application
goal app call \
-f FOOKHE2MRNR3JWRPDPY36KMJX4RGNBNJ5GVJI36QN47LPLCTGG3TXS7ZVM \
--app-id 346 \
--app-account "VLPUJQ6XOMEPMIGPQVBB5D6RKDSU2EX5BB4Y7QLQR7X44JZRBCLJ52FBL4" \
--app-arg "str:register_diploma" \
--app-arg "str:algorand-bootcamp-diploma" \
--app-arg "int:20" 

# Debug application
goal app call \
-f FOOKHE2MRNR3JWRPDPY36KMJX4RGNBNJ5GVJI36QN47LPLCTGG3TXS7ZVM \
--app-id 346 \
--app-account "VLPUJQ6XOMEPMIGPQVBB5D6RKDSU2EX5BB4Y7QLQR7X44JZRBCLJ52FBL4" \
--app-arg "str:register_diploma" \
--app-arg "str:algorand-bootcamp-diploma" \
--app-arg "int:20" \
--out=dump.dr --dryrun-dump

tealdbg debug /data/workshops/bootcamp_repo/6_smart_contract/approval.teal -d dump.dr --listen 0.0.0.0