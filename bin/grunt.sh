run_grunt() {
  if [ -f $build_dir/grunt.js ] || [ -f $build_dir/Gruntfile.js ] || [ -f $build_dir/Gruntfile.coffee ]; then
    # make sure that grunt and grunt-cli are installed locally
    npm install grunt-cli
    npm install grunt
    echo "Found Gruntfile, running grunt heroku:$NODE_ENV task"
    $build_dir/node_modules/.bin/grunt heroku:$NODE_ENV
  else
    echo "No Gruntfile (grunt.js, Gruntfile.js, Gruntfile.coffee) found"
  fi
}