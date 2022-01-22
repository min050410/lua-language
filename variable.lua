-- 주석입니다. sql과 같음 

print('what is local')

-- 기본적으로 global 변수
a=3

print(a)


if true then
    local a = 20 -- local은 이렇게 설정
    local b = 'bbbbb'
    print(a)
    print(b)
end

print(a)
print(b)


