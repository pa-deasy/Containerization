import os

from controller import APP


if __name__ == '__main__':
    APP.run(host='0.0.0.0', port=int(os.environ.get('PORT', 5000)))
