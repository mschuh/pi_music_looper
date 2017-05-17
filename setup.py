from ez_setup import use_setuptools
use_setuptools()
from setuptools import setup, find_packages

setup(name              = 'music_looper',
      version           = '1.0.0',
      author            = 'Matheus Schuh',
      author_email      = 'matheus.schuh@gmail.com',
      description       = 'Application to turn your Raspberry Pi into a dedicated looping music playback device',
      license           = 'GNU GPLv2',
      url               = 'https://github.com/mschuh/pi_video_looper',
      install_requires  = ['pyudev'],
      packages          = find_packages())
