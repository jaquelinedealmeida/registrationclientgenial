def health_plan
    if HEALTH_PLAN.include?(@health_plan)
      true
    else 
      "Plano nao conveniado"
    end 
  end 

  def amount
   @income_caregivers = caregiver1.income + caregiver2.income
  end 

  def validate_particular
    if @income_caregivers >= INCOME_CAREGIVERS && employed_caregivers === EMPLOYED
      return true
    else 
      "Cadastro fora do perfil."
    end
  end 