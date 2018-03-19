class Node{
    constructor(previous, value, next){
        this.value = value;
        this.next = next;
        this.previous = previous;
    }
}

class LinkedList {
    constructor(){
        this.list = null;
    }

    push(input){
        if(this.list){
            var temp = this.list;
            var node  = new Node(temp, input, null);
            temp.next = node;
            this.list = node;
        }
        else{
            var node  = new Node(null, input, null);
            this.list = node;
        }
    }

    pop(){
        if(this.list == null)
            return null;
        
        var temp = this.list;
        if(temp.previous == null)
            this.list = null;
        else
            this.list = temp.previous;

        return temp.value;
    }

    shift(){

        if(this.list == null)
            return null;

        var temp = this.list;
        while(true)
        {
            if(temp.previous == null)
                break;

            temp = temp.previous;
        }
        
        // we are at the beginning
        var secondElement = temp.next;
        if(secondElement != null)
            secondElement.previous = null;

        return temp.value;
    }

    unshift(input){
        
    }
}

module.exports = LinkedList;