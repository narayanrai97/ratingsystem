/*
Error: File to import not found or unreadable: bootstrap-sprockets.
        on line 15 of /home/ubuntu/workspace/ratingSystem/app/assets/stylesheets/application.css.scss

10:  * files in this directory. Styles in this file should be added after the last require_* statement.
11:  * It is generally better to create a new file per style scope.
12:
13:  *\/
14:
15:  @import "bootstrap-sprockets";
16:  @import "bootstrap";
17:
18:  body {
19:   background: #008080;
20:  }

Backtrace:
/home/ubuntu/workspace/ratingSystem/app/assets/stylesheets/application.css.scss:15
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/import_node.rb:67:in `rescue in import'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/import_node.rb:45:in `import'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/import_node.rb:28:in `imported_file'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/import_node.rb:37:in `css_import?'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/perform.rb:314:in `visit_import'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/base.rb:36:in `visit'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/perform.rb:162:in `block in visit'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/stack.rb:79:in `block in with_base'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/stack.rb:135:in `with_frame'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/stack.rb:79:in `with_base'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/perform.rb:162:in `visit'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/base.rb:52:in `block in visit_children'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/base.rb:52:in `map'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/base.rb:52:in `visit_children'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/perform.rb:171:in `block in visit_children'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/perform.rb:183:in `with_environment'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/perform.rb:170:in `visit_children'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/base.rb:36:in `block in visit'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/perform.rb:190:in `visit_root'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/base.rb:36:in `visit'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/perform.rb:161:in `visit'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/visitors/perform.rb:10:in `visit'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/root_node.rb:36:in `css_tree'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/tree/root_node.rb:29:in `render_with_sourcemap'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/engine.rb:389:in `_render_with_sourcemap'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/engine.rb:307:in `render_with_sourcemap'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/plugin/compiler.rb:462:in `update_stylesheet'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/plugin/compiler.rb:215:in `block in update_stylesheets'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/plugin/compiler.rb:209:in `each'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/plugin/compiler.rb:209:in `update_stylesheets'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/plugin.rb:82:in `update_stylesheets'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/exec/sass_scss.rb:340:in `watch_or_update'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/exec/sass_scss.rb:51:in `process_result'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/exec/base.rb:52:in `parse'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/lib/sass/exec/base.rb:19:in `parse!'
/usr/local/rvm/gems/ruby-2.3.0/gems/sass-3.5.1/bin/scss:13:in `<top (required)>'
/usr/local/rvm/gems/ruby-2.3.0/bin/scss:23:in `load'
/usr/local/rvm/gems/ruby-2.3.0/bin/scss:23:in `<main>'
/usr/local/rvm/gems/ruby-2.3.0/bin/ruby_executable_hooks:15:in `eval'
/usr/local/rvm/gems/ruby-2.3.0/bin/ruby_executable_hooks:15:in `<main>'
*/
body:before {
  white-space: pre;
  font-family: monospace;
  content: "Error: File to import not found or unreadable: bootstrap-sprockets.\A on line 15 of /home/ubuntu/workspace/ratingSystem/app/assets/stylesheets/application.css.scss\A \A 10:  * files in this directory. Styles in this file should be added after the last require_* statement.\A 11:  * It is generally better to create a new file per style scope.\A 12: \A 13:  */\A 14: \A 15:  @import \"bootstrap-sprockets\";\A 16:  @import \"bootstrap\";\A 17: \A 18:  body {\A 19:   background: #008080;\A 20:  }"; }
