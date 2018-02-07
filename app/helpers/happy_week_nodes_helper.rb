module HappyWeekNodesHelper

  def is_happy?(nodes)
    nodes.each do |node, children|
      return done?(node.activity) if children.empty?
      case node.operator
        when 'AND' then return is_happy?(left(children)) && is_happy?(right(children))
        when 'OR' then return is_happy?(left(children)) || is_happy?(right(children))
        else raise 'undefined operator'
      end
    end
  end

  private

  def done?(activity)
    Activity.exists?(name: activity)
  end

  def right(children)
    Hash[*children.to_a.at(1)]
  end

  def left(children)
    Hash[*children.first]
  end
end
