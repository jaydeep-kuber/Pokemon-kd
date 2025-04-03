def buildApp(){
    echo "Me buildApp function, mera kaam build karnam hai.."
    echo "Abhi project build ho raha hai..."
}

def testApp(){
    echo "Me testApp function, mera kaam test karnam hai.."
    echo "Abhi project test ho raha hai... on version ${params.VERSION}"
}

def deployApp(){
    echo "Me deployApp function, mera kaam deploy karnam hai.."
    echo "Abhi project deploy ho raha hai on version ${params.VERSION}"
}

return this