require_relative 'graph'

# Implementing topological sort using both Khan's and Tarian's algorithms

def topological_sort(vertices)

  #khans algorithm
  queue = []
  sorted = []

  vertices.each do |vert|
    queue.push(vert) if vert.in_edges.empty?
  end

  while !queue.empty?
    current = queue.shift
    sorted << current

    current.out_edges.dup.each do |edge|
      if edge.to_vertex.in_edges.count == 1
        queue.push(edge.to_vertex)
      end
      edge.destroy!
    end
  end

  vertices.length == sorted.length ? sorted : []
  
end
#   sorted = []
#   explored = Set.new
#   this_stack = Set.new
#   cycle = false
#
#   vertices.each do |vertex|
#     cycle = dfs(vertex, explored, sorted, this_stack, false) if !explored.include?(vertex)
#     return [] if cycle
#   end
#
#   sorted
# end
#
# def dfs(vertex, explored, sorted, this_stack, cycle)
#   return true if this_stack.include?(vertex)
#   explored.add(vertex)
#   this_stack.add(vertex)
#
#   vertex.out_edges.each do |edge|
#     new_vertex = edge.to_vertex
#     if !explored.include?(new_vertex)
#       cycle = dfs(new_vertex, explored, sorted, this_stack, false)
#     end
#     return true if cycle
#   end
#
#   this_stack.delete(vertex)
#   sorted.unshift(vertex)
#   false
