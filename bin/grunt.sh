run_grunt() {
  if [ -f $build_dir/grunt.js ] || [ -f $build_dir/Gruntfile.js ] || [ -f $build_dir/Gruntfile.coffee ]; then
    status "Found Gruntfile, running grunt heroku task"
    $build_dir/node_modules/.bin/grunt heroku
  else
    status "No Gruntfile (grunt.js, Gruntfile.js, Gruntfile.coffee) found"
  fi
}