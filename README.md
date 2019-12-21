# strawberryfields-notebook
Jupyter Notebook docker image for running [Strawberryfields](https://strawberryfields.readthedocs.io/en/stable/index.html)
# Starting notebook
```bash
docker run -it -p 8888:8888 -e THEME='onedork' -e PLT_DARK_THEME=1 --mount type=bind,source="$(pwd)",target=/home/nagyd96/workdir nagyd96/strawberryfields-notebook:latest
```
