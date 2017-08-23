class Stack
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @stack_index = -1
  end
  
  def pop
    if empty?
      return 'Stack is empty!'
    else
      popped = @store[@stack_index]
      @store[@stack_index] = nil
      @stack_index = @stack_index.pred
      popped
    end
  end

  def push(element)
    if full? or element.nil?
      nil
    else
      @stack_index = @stack_index.succ
      @store[@stack_index] = element
      self
    end
  end

  def size
    @size
  end
  
  def show
    p @store
  end

  def last
    return 'Stack is empty!' if @stack_index == -1
    @store[@stack_index]
  end

  private
  
  def full?
    @stack_index == (@size - 1)
  end
  
  def empty?
    @stack_index == -1
  end
end


stack = Stack.new 5
stack.show

stack.push(2)
stack.show

stack.push(7)
stack.show

stack.push(19)
stack.show

stack.pop
stack.show

stack.last