FROM nagyd96/jupyter-notebook-base:latest
USER root

# Install Strawberry Fields and TensorFlow with GPU and CUDA support
RUN python3 -m pip install strawberryfields tensorflow-gpu==1.3

# Switch back to NB_USER
USER $NB_USER
ENTRYPOINT cd $WORKDIR && jupyter notebook --ip=0.0.0.0 --no-browser
