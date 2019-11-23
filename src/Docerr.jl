module Docerr

    struct TestStruct{T} <: Function
        s1::T
        s2::T
    end

"""
    function (hw::Struct)(a::T, b::T) where T

This docstring leads to `UndefVarError`
"""
    function (hw::TestStruct)(a::T, b::T) where T
        return hs.s1+hw.s2 +a +b
    end

end
