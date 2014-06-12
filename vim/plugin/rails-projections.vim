" Adds commands such as Ejmodel, Ejview to open a backbone model from a rails
" project. Grabbed this from github.com/sgrif/dotfiles/vim/rails-projections
"
" Note: I might not use all of this or might want to tweak it if I use Ember
" or Angular instead, but for Backbone it's pretty helpful.
let g:rails_gem_projections = {
  \ "backbone-on-rails": {
  \   "app/assets/javascripts/models/*.js.coffee": {
  \     "command": "jmodel",
  \     "template": "class App.Models.%S extends Backbone.Model",
  \     "alternate": "app/assets/javascripts/collections/%p.js.coffee"
  \   },
  \   "app/assets/javascripts/views/*.js.coffee": {
  \     "command": "jview",
  \     "template": "class App.Views.%S extends Backbone.View\n  template: JST['%s']\n\n  render: ->\n    @$el.html(@template())\n    this"
  \   },
  \   "app/assets/javascripts/collections/*.js.coffee": {
  \     "command": "jcollection",
  \     "template": "class App.Collections.%S extends Backbone.Collection\n  url: '/%s'\n\n  model: App.Models.%S",
  \     "alternate": "app/assets/javascripts/models/%i.js.coffee"
  \   },
  \   "app/assets/javascripts/routers/*.js.coffee": {
  \     "command": "jrouter",
  \     "template": "class App.Routers.%S extends Backbone.Router"
  \   },
  \   "app/assets/templates/*.jst.eco": {
  \     "command": "template"
  \   }
  \ },
  \ "active_model_serializers": {
  \   "app/serializers/*_serializer.rb": {
  \     "command": "serializer",
  \     "template": "class %SSerializer < ActiveModel::Serializer\n  attributes :id, :created_at, :updated_at\nend"
  \   }
  \ }}
let g:rails_projections = {
  \ "app/assets/javascripts/services/*.js.coffee": {
  \   "command": "aservice",
  \   "alternate": "spec/javascripts/services/%s_spec.coffee",
  \   "template": "#= require ../locus_control_services\nclass %S\n\nangular.module('locusControl.services')\n  .service('%S', [%S])"
  \ },
  \ "spec/javascripts/services/*_spec.coffee": {
  \   "command": "asspec",
  \   "template": "#= require services/%s\ndescribe '%S', ->\n  [%S] = []\n\n  beforeEach module 'locusControl.services', ($provide) ->\n    null\n\n  beforeEach inject (_%S_) ->\n    %S = _%S_",
  \   "alternate": "app/assets/javascripts/services/%s.js.coffee"
  \ },
  \ "app/assets/javascripts/controllers/*_ctrl.js.coffee": {
  \   "command": "acontroller",
  \   "alternate": "spec/javascripts/controllers/%s_ctrl_spec.coffee"
  \ },
  \ "spec/javascripts/controllers/*_ctrl_spec.coffee": {
  \   "command": "acspec",
  \   "alternate": "app/assets/javascripts/controllers/%s_ctrl.js.coffee"
  \ },
  \ "app/assets/javascripts/directives/*.js.coffee": {
  \   "command": "adirective",
  \   "template": "#= require ../locus_control_directives\n%S = ->\n  restrict: 'E'\n\n  link: (scope, elem, attrs) ->\n\nangular.module('locusControl.directives')\n  .directive('%S', [%S])",
  \   "alternate": "spec/javascripts/directives/%s_spec.coffee"
  \ },
  \ "spec/javascripts/directives/*_spec.coffee": {
  \   "command": "adspec",
  \   "alternate": "app/assets/javascripts/directives/%s.js.coffee",
  \   "template": "#= require directives/%s\ndescribe '%S', ->\n  [$scope, compileDirective] = []\n\n  beforeEach module 'locusControl.directives', ($provide) ->\n    null\n\n  beforeEach inject ($rootScope, $compile) ->\n    $scope = $rootScope.$new()\n\n    compileDirective = ->\n      bind = $compile(\"\"\"\n      <%S></%S>\n      \"\"\")\n      elem = bind($scope)\n      $scope.$digest()\n      elem"
  \ }}
