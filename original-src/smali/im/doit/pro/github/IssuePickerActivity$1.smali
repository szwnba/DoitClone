.class Lim/doit/pro/github/IssuePickerActivity$1;
.super Landroid/widget/BaseAdapter;
.source "IssuePickerActivity.java"


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

    .line 90
    iput-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .line 93
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v0}, Lim/doit/pro/github/IssuePickerActivity;->access$000(Lim/doit/pro/github/IssuePickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v1}, Lim/doit/pro/github/IssuePickerActivity;->access$100(Lim/doit/pro/github/IssuePickerActivity;)Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v1}, Lim/doit/pro/github/IssuePickerActivity;->access$200(Lim/doit/pro/github/IssuePickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x0

    :goto_1e
    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 98
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 108
    iget-object p3, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p3}, Lim/doit/pro/github/IssuePickerActivity;->access$000(Lim/doit/pro/github/IssuePickerActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p1, p3, :cond_7a

    .line 109
    iget-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p1}, Lim/doit/pro/github/IssuePickerActivity;->access$300(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_73

    .line 110
    iget-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lim/doit/pro/github/IssuePickerActivity;->access$302(Lim/doit/pro/github/IssuePickerActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 111
    iget-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p1}, Lim/doit/pro/github/IssuePickerActivity;->access$300(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    iget-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p1}, Lim/doit/pro/github/IssuePickerActivity;->access$300(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 p3, -0x76000000

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p1}, Lim/doit/pro/github/IssuePickerActivity;->access$300(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p3, 0x11

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    iget-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-virtual {p1}, Lim/doit/pro/github/IssuePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 115
    iget-object p2, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p2}, Lim/doit/pro/github/IssuePickerActivity;->access$300(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/TextView;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1, p3, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 116
    iget-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p1}, Lim/doit/pro/github/IssuePickerActivity;->access$300(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u52a0\u8f7d\u66f4\u591a\u2026"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p1}, Lim/doit/pro/github/IssuePickerActivity;->access$300(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Lim/doit/pro/github/IssuePickerActivity$1$1;

    invoke-direct {p2, p0}, Lim/doit/pro/github/IssuePickerActivity$1$1;-><init>(Lim/doit/pro/github/IssuePickerActivity$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :cond_73
    iget-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p1}, Lim/doit/pro/github/IssuePickerActivity;->access$300(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1

    .line 123
    :cond_7a
    instance-of p3, p2, Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p3, :cond_80

    move-object p2, v0

    .line 124
    :cond_80
    if-eqz p2, :cond_8a

    iget-object p3, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p3}, Lim/doit/pro/github/IssuePickerActivity;->access$300(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/TextView;

    move-result-object p3

    if-ne p2, p3, :cond_a8

    .line 125
    :cond_8a
    iget-object p2, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object p3, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    .line 126
    invoke-virtual {p3}, Lim/doit/pro/github/IssuePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v1, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-virtual {v1}, Lim/doit/pro/github/IssuePickerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout_issue_item"

    const-string v3, "layout"

    invoke-virtual {p3, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 125
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 128
    :cond_a8
    iget-object p3, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p3}, Lim/doit/pro/github/IssuePickerActivity;->access$000(Lim/doit/pro/github/IssuePickerActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim/doit/pro/github/IssuePickerActivity$Issue;

    .line 129
    iget-object p3, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    const-string v0, "issue_item_title"

    invoke-static {p3, v0}, Lim/doit/pro/github/IssuePickerActivity;->access$500(Lim/doit/pro/github/IssuePickerActivity;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    const-string v1, "issue_item_sub"

    invoke-static {v0, v1}, Lim/doit/pro/github/IssuePickerActivity;->access$500(Lim/doit/pro/github/IssuePickerActivity;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lim/doit/pro/github/IssuePickerActivity$Issue;->number:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lim/doit/pro/github/IssuePickerActivity$Issue;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lim/doit/pro/github/IssuePickerActivity$Issue;->state:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " \u00b7 \u66f4\u65b0 "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Lim/doit/pro/github/IssuePickerActivity$Issue;->updated:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " \u00b7 "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lim/doit/pro/github/IssuePickerActivity$1;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {p3}, Lim/doit/pro/github/IssuePickerActivity;->issueRepo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-object p2
.end method
