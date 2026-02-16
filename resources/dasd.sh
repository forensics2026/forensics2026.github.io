sudo ls -la /mnt/ewf

sudo chown -R vboxuser:vboxuser /home/vboxuser/foremost_out1 2>/dev/null || true
ls -la /home/vboxuser/foremost_out1 | head
head -n 40 /home/vboxuser/foremost_out1/audit.txt

mkdir -p /home/vboxuser/foremost_out2
sudo foremost -t jpg,pdf -i /mnt/ewf/ewf1 -o /home/vboxuser/foremost_out2 > /home/vboxuser/foremost_out2/run.log 2>&1
sudo chown -R vboxuser:vboxuser /home/vboxuser/foremost_out2
ls -la /home/vboxuser/foremost_out2 | head
