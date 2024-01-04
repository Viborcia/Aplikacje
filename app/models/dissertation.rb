class Dissertation < ApplicationRecord
  
    belongs_to :user
    has_one_attached :pdf

    validates :pdf, presence: true
    validate :user_has_no_other_dissertation
    
    after_commit :check_pdf_attachment, on: [:create, :update]

    private

    def validate_pdf_format
        if pdf.attached? && !pdf.blob.content_type.in?(%w(application/pdf))
          errors.add(:pdf, 'Musisz wybrać plik w formacie PDF.')
        end
      end

    def user_has_no_other_dissertation
        if user&.dissertations&.exists?
          errors.add(:user, 'Użytkownik już dodał pracę dyplomową.')
        end
    end

    def check_pdf_attachment
        # Sprawdź, czy PDF został załączony po zapisaniu rekordu
        if pdf.attached? && pdf.attachment
          Rails.logger.debug("PDF attached? true")
        else
          Rails.logger.debug("PDF attached? false")
        end
      end
end
