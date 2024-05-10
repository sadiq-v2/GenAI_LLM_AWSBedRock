# Enable JupyterLab by default
c.NotebookApp.default_url = '/lab'

# Set a password to access the notebook server
from notebook.auth import passwd
c.NotebookApp.password = passwd('xxxxxxxx')

# Allow access to the notebook server from remote IP addresses
c.NotebookApp.ip = '0.0.0.0'

# Set the port that the notebook server listens on
c.NotebookApp.port = 8888

# Disable token-based authentication
c.NotebookApp.token = ''
