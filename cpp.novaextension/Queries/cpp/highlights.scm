; Functions

(call_expression
  function: (qualified_identifier
    name: (identifier) @identifier.function))

(template_function
  name: (identifier) @identifier.function)

(template_method
  name: (field_identifier) @identifier.function)

(template_function
  name: (identifier) @identifier.function)

(function_declarator
  declarator: (qualified_identifier
    name: (identifier) @identifier.function))

(function_declarator
  declarator: (qualified_identifier
    name: (identifier) @identifier.function))

(function_declarator
  declarator: (field_identifier) @identifier.function)

; Types

((namespace_identifier) @identifier.type
 (#match? @identifier.type "^[A-Z]"))

(auto) @keyword.construct

; Constants

(this) @keyword.self
(nullptr) @value.null

; Keywords

"catch" @keyword
"class" @keyword
"co_await" @keyword
"co_return" @keyword
"co_yield" @keyword
"constexpr" @keyword
"delete" @keyword
"explicit" @keyword
"final" @keyword
"friend" @keyword
"mutable" @keyword
"namespace" @keyword
"noexcept" @keyword
"new" @keyword
"override" @keyword
"private" @keyword
"protected" @keyword
"public" @keyword
"template" @keyword
"throw" @keyword
"try" @keyword
"typename" @keyword
"using" @keyword
"virtual" @keyword

; Strings

(raw_string_literal) @string

; ===

; (enum_specifier
;   name: (identifier) @definition.enum)

(enum_specifier
  name: (type_identifier) @definition.enum)

(enumerator
  name: (identifier) @identifier.property)
