class DarkModeController < ApplicationController
    def create
      Current.user.update(dark_mode: !Current.user.dark_mode)
      redirect_back(fallback_location: root_path)
    end
end