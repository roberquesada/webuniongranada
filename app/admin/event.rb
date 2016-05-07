ActiveAdmin.register Event do
permit_params :title, :description, :slug, :type, :date
before_filter only: [:edit, :destroy, :show, :update] do
  @event = Event.find_by_slug params[:id]
end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
