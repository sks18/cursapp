module SideBarHelper
  def side_bar_items(ru)
    result = []
    result << {
      :name => 'Администрирование',
      :icon => 'users',
      :children => [
      {:name => 'Пользователи',
       :controller => :users, :action => :index,
       :icon => 'users',
       :class => 'long'},
      {:name => 'Добавление',
       :controller => :users, :action => :new,
       :icon => 'user-plus'},
      {:name => 'Роли',
       :controller => :roles, :action => :index,
       :icon => 'align-center',
       :class => 'long'},
    ]} 
    result << {
      :name => 'Данные по больнице',
      :icon => 'search-plus',
      :children => [
      {:name => 'Палаты',
       :controller => :wards, :action => :index,
       :icon => 'search',
       :class => 'long'},
      {:name => 'Амб.периоды',
       :controller => :periods, :action => :index,
       :icon => 'search',
       :class => 'long'}
    ]} 
    result
  end
  
  def is_open?(ctr, act)
    case ctr.to_s
    when 'users', 'roles', 'cards', 'wards', 'periods'
      ctr.to_s == controller_name.to_s  
    else
      false
    end
  end
end
