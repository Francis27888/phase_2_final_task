module TweeterclonesHelper
  def choose_new_or_edit
        if action_name == 'new' #|| action_name == 'confirm'
          confirm_tweeterclones_path
        elsif action_name == 'edit'
          tweeterclone_path
        end
  end
end
