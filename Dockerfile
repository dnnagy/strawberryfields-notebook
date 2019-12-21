FROM nagyd96/jupyter-notebook-base:latest
USER root

# Install pytorch 1.3.1 with torchvision
RUN python3 -m pip install torch==1.3.1 torchvision==0.4.2

# Install Strawberry Fields and TensorFlow with GPU and CUDA support
RUN python3 -m pip install strawberryfields tensorflow-gpu==1.3

# Switch back to NB_USER
# USER $NB_USER
# ENTRYPOINT cd $WORKDIR && jupyter notebook --ip=0.0.0.0 --no-browser
