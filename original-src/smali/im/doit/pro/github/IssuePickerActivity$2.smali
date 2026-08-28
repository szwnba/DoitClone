.class Lim/doit/pro/github/IssuePickerActivity$2;
.super Ljava/lang/Object;
.source "IssuePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/IssuePickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/github/IssuePickerActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/github/IssuePickerActivity;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$2;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 140
    iget-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$2;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p1}, Lim/doit/pro/github/IssuePickerActivity;->access$000(Lim/doit/pro/github/IssuePickerActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p3, p1, :cond_d

    return-void

    .line 141
    :cond_d
    iget-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$2;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p1}, Lim/doit/pro/github/IssuePickerActivity;->access$000(Lim/doit/pro/github/IssuePickerActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/doit/pro/github/IssuePickerActivity$Issue;

    .line 142
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 143
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "gh-issue-"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p1, Lim/doit/pro/github/IssuePickerActivity$Issue;->number:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "evernote_note_guid"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "#"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p1, Lim/doit/pro/github/IssuePickerActivity$Issue;->number:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p1, Lim/doit/pro/github/IssuePickerActivity$Issue;->title:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "evernote_note_title"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string p3, "evernote_note_share_url"

    iget-object p1, p1, Lim/doit/pro/github/IssuePickerActivity$Issue;->url:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$2;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Lim/doit/pro/github/IssuePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 147
    iget-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$2;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-virtual {p1}, Lim/doit/pro/github/IssuePickerActivity;->finish()V

    .line 148
    return-void
.end method
