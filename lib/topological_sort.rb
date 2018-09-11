require_relative 'graph'

# Implementing topological sort using both Khan's and Tarian's algorithms

def topological_sort(vertices)

  

end



# queue = []
# sorted = []
#
# vertices.each do |vert|
#   queue.push(vert) if vert.in_edges.empty?
# end
#
# while !queue.empty?
#   current = queue.shift
#   sorted << current
#
#   current.out_edges.dup.each do |edge|
#     if edge.to_vertex.in_edges.count == 1
#       queue.push(edge.to_vertex)
#     end
#     edge.destroy!
#   end
# end
#
# vertices.length == sorted.length ? sorted : []
