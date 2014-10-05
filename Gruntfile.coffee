module.exports = (grunt) ->
  grunt.initConfig
    jade:
      compile:
        options:
          pretty: true 
        expand: true
        cwd: 'src/jade/'
        src: '*.jade'
        dest: 'dest/'
        ext: '.html'
    watch:
      jadefile:
        files: ['src/jade/*.jade']
        tasks: ['jade']
      jadeincludefile:
        files: ['src/jade/include/*.jade']
        tasks: ['jade']

  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.registerTask 'default', ['watch']

return