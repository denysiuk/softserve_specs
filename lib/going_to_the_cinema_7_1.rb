def movie (card, ticket, percent)
  systemA = ticket
  systemB = card + ticket * percent
  ticket_count = 1

  if card < 0 || ticket < 0 || percent < 0
    return 'Enter positive values'
  end

  if card.is_a? Float
    return 'Enter whole values'
  end

  if percent > 1 
    return 'Percent should be one or less'
  end

  until systemB.ceil < systemA.ceil do
    ticket_count += 1
    systemA += ticket
    systemB += ticket * percent**ticket_count
  end

  ticket_count
end
