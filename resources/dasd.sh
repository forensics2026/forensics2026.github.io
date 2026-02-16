cat > ~/cw1.sh <<'EOF'
#!/bin/bash
set -e

echo "[1] Fix ownership so vboxuser can access foremost folders"
sudo chown -R vboxuser:vboxuser /home/vboxuser/foremost_out1 2>/dev/null || true
sudo chmod -R u+rwX /home/vboxuser/foremost_out1 2>/dev/null || true

echo "[2] Show mount + output (for screenshots)"
sudo ls -la /mnt/ewf
ls -la ~/foremost_out1 | head || true
head -n 40 ~/foremost_out1/audit.txt || true

echo "[3] Run targeted carve (quiet log)"
mkdir -p ~/foremost_out2
sudo foremost -t jpg,pdf -i /mnt/ewf/ewf1 -o ~/foremost_out2 > ~/foremost_out2/run.log 2>&1
sudo chown -R vboxuser:vboxuser ~/foremost_out2
ls -la ~/foremost_out2 | head
echo "DONE."
EOF

chmod +x ~/cw1.sh
