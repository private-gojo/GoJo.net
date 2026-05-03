#!/bin/bash
# GOJO Installer for Termux

echo "[GOJO] Installing..."

# Download gojo.py
curl -sL https://raw.githubusercontent.com/private-gojo/GoJo.net/main/gojo.py -o $PREFIX/bin/gojo.py

# Create wrapper command
cat > $PREFIX/bin/gojo << 'EOF'
#!/bin/bash
python3 $PREFIX/bin/gojo.py "$@"
EOF

chmod +x $PREFIX/bin/gojo
chmod +x $PREFIX/bin/gojo.py

echo "[GOJO] Installation complete. Run: gojo -a 8"
