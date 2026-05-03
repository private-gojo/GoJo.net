#!/bin/bash
echo "[GOJO] Installing..."
curl -sL https://raw.githubusercontent.com/private-gojo/GoJo.net/main/gojo.py -o $PREFIX/bin/gojo.py
cat > $PREFIX/bin/gojo << 'EOF'
#!/bin/bash
python3 $PREFIX/bin/gojo.py "$@"
EOF
chmod +x $PREFIX/bin/gojo
chmod +x $PREFIX/bin/gojo.py
echo "[GOJO] Installation complete. Run: gojo -port 7777"
