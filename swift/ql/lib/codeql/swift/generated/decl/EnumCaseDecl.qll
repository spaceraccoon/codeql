// generated by codegen/codegen.py
import codeql.swift.elements.decl.Decl
import codeql.swift.elements.decl.EnumElementDecl

class EnumCaseDeclBase extends @enum_case_decl, Decl {
  override string toString() { result = "EnumCaseDecl" }

  EnumElementDecl getElement(int index) {
    exists(EnumElementDecl x |
      enum_case_decl_elements(this, index, x) and
      result = x.resolve()
    )
  }

  EnumElementDecl getAnElement() { result = getElement(_) }

  int getNumberOfElements() { result = count(getAnElement()) }
}