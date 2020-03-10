//
//  CardManager.swift
//  FirstApp
//
//  Created by Arjasa Virya Aryanera on 05/03/20.
//  Copyright © 2020 Arjasa Virya Aryanera. All rights reserved.
//

import Foundation
import UIKit

struct Card{
    var name: String
    var image: String
    var descriptionUpright: String
    var descriptionReversed: String
}
class CardManager{
    
    let cardList = [
        Card(name: "The Fool", image: "00", descriptionUpright: "Throw caution to the wind and be ready to embrace the unknown, leaving behind any fear, worry or anxiety about what may or may not happen.", descriptionReversed: "Look at the bigger picture and consider how you can keep your free spirit without harming others."),
        Card(name: "The Magician", image: "01", descriptionUpright: "Now is the perfect time to move forward on an idea that you recently conceived.", descriptionReversed: "If you take care of what you intend to manifest, the Universe will work out the how."),
        Card(name: "High Priestess", image: "02", descriptionUpright: "The answers you are seeking will come from within, from your deepest truth and ‘knowing’.", descriptionReversed: "It is time to get quiet and withdraw yourself from the external world to observe what your inner guidance is sharing with you now."),
        Card(name: "The Empress", image: "03", descriptionUpright: "You are in a period of growth, in which all you have dreamed of is now coming to fruition. ", descriptionReversed: "Now is the time to bring your loving energy and focus to yourself, especially if you have been giving away your personal power to other."),
        Card(name: "The Emperor", image: "04", descriptionUpright: "Create calm out of chaos by breaking down any problem into its parts and then mapping out the actions you need to take to resolve it.", descriptionReversed: "Seek to find a solution where you lead from a place of personal power and enable others to do the same."),
        Card(name: "The Hierophant", image: "05", descriptionUpright: "Work with a teacher, mentor, or guide to teach you about values and beliefs in a structured way.", descriptionReversed: "It may feel unsettling at first as you make your own way, but over time, you will learn to trust yourself and tap into your inner knowledge."),
        Card(name: "The Lovers", image: "06", descriptionUpright: "Communicating openly and honestly with those you care about, a harmonious and fulfilling relationship built on trust and respect will be created.", descriptionReversed: "To what extent do you honour and accept who you are and the value you offer in this world?"),
        Card(name: "The Chariot", image: "07", descriptionUpright: "You have set your objectives and are now channelling your inner power with a fierce dedication to bring them to fruition.", descriptionReversed: "Loosen your grip and let things run their course. Be open to offers of help and then be grateful for what you receive."),
        Card(name: "The Strength", image: "08", descriptionUpright: "Approach your situation from a place of forgiveness, love and compassion.", descriptionReversed: "It’s vital that you take care of yourself so you can take care of others."),
        Card(name: "The Hermit", image: "09", descriptionUpright: "You will see what lies ahead of you – not miles upon miles, but enough to know where to step next.", descriptionReversed: "It is time to go deeper into your inner being and rediscover your greater purpose on this earth."),
        Card(name: "Wheel of Fortune", image: "10", descriptionUpright: "Keep your mind open to all kinds of synchronicities and signs from the Universe.", descriptionReversed: "Accept that change is inevitable and you will have a much-improved experience when you can go with the flow."),
        Card(name: "Justice", image: "11", descriptionUpright: "Be ready to take responsibility for your actions and stand accountable for the ensuing consequences.", descriptionReversed: "Assess your situation once more, this time intending to discover where you can accept responsibility."),
        Card(name: "The Hanged Man", image: "12", descriptionUpright: "Something new is emerging, and you won’t be able to see it unless you allow the time and space for it to come through.", descriptionReversed: "Be in flow with life, even if it’s not as you expected it, and loosen your grip."),
        Card(name: "Death", image: "13", descriptionUpright: "It may be difficult to let go of the past, but you will soon see its importance and the promise of renewal and transformation.", descriptionReversed: "As you learn to release the past and surrender to the present, the future becomes even brighter."),
        Card(name: "Temperance", image: "14", descriptionUpright: "Be the peacekeeper and take a balanced and moderate approach, avoiding any extremes.", descriptionReversed: "Focus on your long-term vision and higher purpose and seek to align your daily activities with this vision."),
        Card(name: "The Devil", image: "15", descriptionUpright: "You have found yourself trapped between the short-term pleasure you receive and the longer-term pain you experience.", descriptionReversed: "Let go of fear and release any self-imposed limiting beliefs standing in the way of your growth."),
        Card(name: "The Tower", image: "16", descriptionUpright: "Change is here to tear things up, create chaos and destroy everything in its path for the better.", descriptionReversed: "While this can be an unsettling time, trust in the process and know it is for the best."),
        Card(name: "The Star", image: "17", descriptionUpright: "This is a time of significant personal growth and development as you are now ready to receive the many blessings of the Universe.", descriptionReversed: "Take a moment to ask yourself what the deeper life lesson is, and how this is a blessing, not a punishment."),
        Card(name: "The Moon", image: "18", descriptionUpright: "Let go of your conscious mental blocks or negative self-talk and allow your intuition to guide you.", descriptionReversed: "Trust that the answers you need are already within you, and tune in to your inner guidance system to hear those answers."),
        Card(name: "The Sun", image: "19", descriptionUpright: "Radiate who you are and what you stand for; shine your love on those you care about.", descriptionReversed: "Dance like no-one is watching, sing like no-one is listening, and let your heart and soul fly free."),
        Card(name: "Judgement", image: "20", descriptionUpright: "Let go of your old self and step into this newest version of who you really are.", descriptionReversed: "It’s time to push past your inner fears and self-doubt, and trust that the Universe has your back. This is happening for a reason."),
        Card(name: "The Sun", image: "21", descriptionUpright: "Everything has come together, and you are in the right place, doing the right thing, achieving what you have envisioned.", descriptionReversed: "Don’t be afraid to set stretch goals for yourself, even if it means enduring hardships or challenges along the way; it will make the victory even sweeter.")
    ]
    
    func getCard() -> Card{
        return cardList.randomElement()!
    }
}
