module JSONSelect
  
  require 'treetop'
  
  require 'json_select/version'
  require 'json_select/selector_parser'
  require 'json_select/selector'
  require 'json_select/parser'
  
  module Ast
    require 'json_select/ast/combination_selector'
    require 'json_select/ast/simple_selector'
    require 'json_select/ast/selector_group'
    require 'json_select/ast/type_selector'
    require 'json_select/ast/hash_selector'
    require 'json_select/ast/pseudo_selector'
    require 'json_select/ast/universal_selector'
    
    require 'json_select/ast/odd_expr'
    require 'json_select/ast/even_expr'
    require 'json_select/ast/simple_expr'
    require 'json_select/ast/complex_expr'
  end
  
  ParseError = Class.new(RuntimeError)
  
  def self.parse(selector)
    JSONSelect::Parser.new(selector).parse
  end
  
end

def JSONSelect(selector)
  JSONSelect.parse(selector)
end
