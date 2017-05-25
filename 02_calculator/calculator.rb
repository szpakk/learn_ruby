def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(list)
	result = 0
	list.each { |num| result += num }
	result
end

def multiply(a, b, *args)
	result = a * b
	if args.length > 0
		args.each { |arg| result *= arg }
	end
	result
end

def power(a, b)
	a**b
end

def factorial(num)
	if num == 0 || num == 1
		return 1
	end
	num * factorial(num-1)
end