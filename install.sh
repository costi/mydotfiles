#!/bin/bash

cp -va * ~
tar -cvf - .* --exclude=\. --exclude=\.\. --exclude=\.git | tar -xf - -C ~/


