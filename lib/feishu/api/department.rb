module Feishu
  module Api
    module Department
      def get_info(department_id)
        get("/departments/#{department_id}")
      end

      def get_children(department_id, page_size: 50)
        get("/departments/#{department_id}/children", query: { page_size: page_size })
      end

      def get_users(department_id, page_size: 50)
        get("/users/find_by_department", query: { department_id: department_id, page_size: page_size })
      end
    end
  end
end
