DEST_DIR="/tmp/skyport"
mkdir -p "$DEST_DIR"
find . -maxdepth 1 \
    ! -path "." \
    ! -path "./.git" \
    ! -name "move_files.sh" \
    -exec mv -t "$DEST_DIR" {} +
echo "Backup created at $DEST_DIR"
git fetch origin
git reset --hard origin/main
cp "$DEST_DIR/skyport.db" .
cp "$DEST_DIR/config.json" config.old.json
npm install
echo "Update process completed successfully"
