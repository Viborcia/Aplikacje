class SessionsController < Devise::SessionsController
    def after_sign_in_path_for(resource)
            if current_user.student? 
              # Logowanie dla studenta z domeną @student.pwr.edu.pl
              # Przeprowadź odpowiednie akcje
              student_path
            elsif current_user.promoter?
              # Logowanie dla promotora z domeną @pwr.edu.pl
              # Przeprowadź odpowiednie akcje
            elsif current_user.admin?
              # Logowanie dla admina - dowolna domena
              # Przeprowadź odpowiednie akcje
            else
              # Obsługa innych przypadków (np. błędne dane logowania)
              root_path
            end
          
    end
end