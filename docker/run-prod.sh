# AUTH JWT RANDOM SECRET
export JWT_SECRET=`tr -dc A-Za-z0-9 </dev/urandom | head -c 15; echo`

# Check if UMASK is set, otherwise use a default value
UMASK_VALUE=${UMASK:-0022}

# Apply the umask
umask "$UMASK_VALUE"

sleep 2
yarn --cwd ./api prod