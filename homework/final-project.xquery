<cookbooks>
{for $cookbook in collection("file:/Users/alexismurrell/Desktop/cookbook_textencoded?select=*.xml")/cookbook
order by data($cookbook/meta/dcDate)
return
<cookbook>
    <title>{data($cookbook/meta/dcTitle)}</title>
    <idno>{data($cookbook/@bookID)}</idno>
    <author>{string-join($cookbook/meta/dcCreator, ' | ')}</author>
    <publisher>{data($cookbook/meta/dcPublisher)}</publisher>
    <yearPublished>{data($cookbook/meta/dcDate)}</yearPublished>
    <coverage>{string-join($cookbook/meta/dcCoverage, ' | ')}</coverage>
    <fruits>
        <banana>{count($cookbook/body//ingredient[contains(.,'banana')])}</banana>
        <apple>{count($cookbook/body//ingredient[contains(.,'apple')])}</apple>
        <strawberry>{count($cookbook/body//ingredient[contains(.,'strawberry')])+count($cookbook/body//ingredient[contains(.,'strawberries')])}</strawberry>
        <grape>{count($cookbook/body//ingredient[contains(.,'grape')])}</grape>
        <orange>{count($cookbook/body//ingredient[contains(.,'orange')])}</orange>
        <watermelon>{count($cookbook/body//ingredient[contains(.,'watermelon')])}</watermelon>
        <lemon>{count($cookbook/body//ingredient[contains(.,'lemon')])}</lemon>
        <avocado>{count($cookbook/body//ingredient[contains(.,'avocado')])}</avocado>
        <peach>{count($cookbook/body//ingredient[contains(.,'peach')])}</peach>
        <blueberry>{count($cookbook/body//ingredient[contains(.,'blueberry')])+count($cookbook/body//ingredient[contains(.,'blueberries')])}</blueberry>
    </fruits>
    <vegetables>
        <onion>{count($cookbook/body//ingredient[contains(.,'onion')])}</onion>
        <celery>{count($cookbook/body//ingredient[contains(.,'celery')])}</celery>
        <carrot>{count($cookbook/body//ingredient[contains(.,'carrot')])}</carrot>
        <corn>{count($cookbook/body//ingredient[contains(.,'corn')])}</corn>
        <potato>{count($cookbook/body//ingredient[contains(.,'potato')])}</potato>
        <tomato>{count($cookbook/body//ingredient[contains(.,'tomato')])}</tomato>
        <lettuce>{count($cookbook/body//ingredient[contains(.,'lettuce')])}</lettuce>
        <broccoli>{count($cookbook/body//ingredient[contains(.,'broccoli')])}</broccoli>
        <cucumber>{count($cookbook/body//ingredient[contains(.,'cucumber')])}</cucumber>
    </vegetables>
    <dairy>
        <butter>{count($cookbook/body//ingredient[contains(.,'butter')])}</butter>
        <milk>{count($cookbook/body//ingredient[contains(.,'milk')])}</milk>
        <yogurt>{count($cookbook/body//ingredient[contains(.,'yogurt')])+count($cookbook/body/chapter//ingredient[contains(.,'yoghurt')])}</yogurt>
        <cheese>{count($cookbook/body//ingredient[contains(.,'cheese')])}</cheese>
        <iceCream>{count($cookbook/body//ingredient[contains(.,'ice cream')])}</iceCream>
    </dairy>
    <meats>
        <beef>{count($cookbook/body//ingredient[contains(.,'beef')])}</beef>
        <chicken>{count($cookbook/body//ingredient[contains(.,'chicken')])}</chicken>
        <turkey>{count($cookbook/body//ingredient[contains(.,'turkey')])}</turkey>
        <pork>{count($cookbook/body//ingredient[contains(.,'pork')])}</pork>
        <venison>{count($cookbook/body//ingredient[contains(.,'venison')])}</venison>
        <veal>{count($cookbook/body//ingredient[contains(.,'veal')])}</veal>
        <fish>{count($cookbook/body//ingredient[contains(.,'fish')])}</fish>
        <egg>{count($cookbook/body//ingredient[contains(.,'egg')])}</egg>
        <bean>{count($cookbook/body//ingredient[contains(.,'bean')])}</bean>
    </meats>
    <grains>
        <rice>{count($cookbook/body//ingredient[contains(.,'rice')])}</rice>
        <pasta>{count($cookbook/body//ingredient[contains(.,'pasta')])+count($cookbook/body//ingredient[contains(.,'noodle')])+count($cookbook/body//ingredient[contains(.,'spaghetti')])+count($cookbook/body//ingredient[contains(.,'macaroni')])}</pasta>
        <oats>{count($cookbook/body//ingredient[contains(.,'oat')])+count($cookbook/body//ingredient[contains(.,'oatmeal')])}</oats>
        <bread>{count($cookbook/body//ingredient[contains(.,'bread')])}</bread>
        <barley>{count($cookbook/body//ingredient[contains(.,'barley')])}</barley>
        <flour>{count($cookbook/body//ingredient[contains(.,'flour')])}</flour>
    </grains>
</cookbook>
}
</cookbooks>