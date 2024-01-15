codeunit 50709 LibarayBookMgmt
{
    trigger OnRun()
    begin
        if books.FindSet() then
        repeat
            rentedAmount.Add(books."Rented Count");
            bookName.Add(books.Title);
        until books.Next() = 0;
        bookListLength  := rentedAmount.Count();
        for i := 1 to bookListLength - 1 do
        begin
            flag := false;
            for j := 1 to bookListLength - 1 do
            begin
                if rentedAmount.Get(j) > rentedAmount.Get(j + 1) then
                begin
                temp := rentedAmount.Get(j + 1);
                rentedAmount.Insert(j + 1, rentedAmount.Get(j));
                rentedAmount.Insert(j, temp);
                temp1 := bookName.Get(j + 1);
                bookName.Insert(j + 1, bookName.Get(j));
                bookName.Insert(j, temp1);
                flag := true;
                end;
            end;
        end;
        // for i := 1 to bookListLength - 1 do
        // begin
        //     counter := counter + 1;
        //     if counter = 1 then
        //     begin
        //         popupMessage := popupMessage + bookName.Get(i);
        //     end;
        //     if (counter <= 3) and (counter <> 1)  then
        //     begin
        //         popupMessage := popupMessage + ' - ' + bookName.Get(i);
        //     end;
        // end;
        last3 := bookListLength - 2;
        last2 := bookListLength - 1;
        last1 := bookListLength;
        popupMessage := bookName.Get(last3) + ' - ' + bookName.Get(last2) + ' - ' + bookName.Get(last1);
        Message(popupMessage);
    end;
    
    var
        flag: Boolean;
        bookListLength: Integer;
        i: Integer;
        j: Integer;
        temp: Integer;
        temp1: Text[50];
        rentedAmount: List of [Integer];
        bookName: List of [Text[50]];
        books: Record Library;
        popupMessage: Text[500];
        counter: Integer;
        last3: Integer;
        last2: Integer;
        last1: Integer;
}