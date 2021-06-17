from [module - Execution of Python code with -m option or not - Stack Overflow](https://stackoverflow.com/questions/22241420/execution-of-python-code-with-m-option-or-not)
```
$ cat << EOF > test/foo/bar/baz.py 
> if __name__ == "__main__":
>     print __package__
>     print __name__
> 
> EOF
```
