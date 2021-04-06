https://askubuntu.com/questions/420981/how-do-i-save-terminal-output-to-a-file

## train

output to file, also terminal

```
screen -R train
python -u train.py  | tee -a bz_64_ep_40.log
```
