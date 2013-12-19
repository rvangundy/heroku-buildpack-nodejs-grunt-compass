run_grunt() {
  if [ -f $build_dir/grunt.js ] || [ -f $build_dir/Gruntfile.js ] || [ -f $build_dir/Gruntfile.coffee ]; then
    # make sure that grunt and grunt-cli are installed locally
    npm install grunt-cli --save-dev
    npm install grunt --save-dev
    status "Found Gruntfile, running grunt heroku task"
    $build_dir/node_modules/.bin/grunt heroku
  else
    status "No Gruntfile (grunt.js, Gruntfile.js, Gruntfile.coffee) found"
  fi
}