https://askubuntu.com/questions/420981/how-do-i-save-terminal-output-to-a-file

## train

output to file, also terminal

```
screen -R train
python -u train.py  | tee -a bz_64_ep_40.log
```

### notes

1. won't work for opennmt, which use stderr for logging

wait

## watch log

```
while true; tail  segment_pad_id_1_retrain_训练_bz_64_ep_40.py; do tail bz_64_ep_40.log ; sleep 5; done
```

`watch` result in bad format
