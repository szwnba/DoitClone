.class Lim/doit/pro/activity/SelectContactsActivity$6;
.super Ljava/lang/Object;
.source "SelectContactsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SelectContactsActivity;->initSearchInputListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SelectContactsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SelectContactsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SelectContactsActivity$6;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .param p1, "s"    # Landroid/text/Editable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 159
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    iget-object v5, p0, Lim/doit/pro/activity/SelectContactsActivity$6;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SelectContactsActivity;->access$8(Lim/doit/pro/activity/SelectContactsActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 165
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    iget-object v5, p0, Lim/doit/pro/activity/SelectContactsActivity$6;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    iget-object v6, p0, Lim/doit/pro/activity/SelectContactsActivity$6;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SelectContactsActivity;->access$1(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v5, v6}, Lim/doit/pro/activity/SelectContactsActivity;->access$9(Lim/doit/pro/activity/SelectContactsActivity;Ljava/util/ArrayList;)V

    .line 167
    iget-object v5, p0, Lim/doit/pro/activity/SelectContactsActivity$6;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SelectContactsActivity;->access$10(Lim/doit/pro/activity/SelectContactsActivity;)Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->notifyDataSetChanged()V

    .line 192
    :goto_1
    return-void

    .line 163
    :cond_0
    iget-object v5, p0, Lim/doit/pro/activity/SelectContactsActivity$6;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SelectContactsActivity;->access$8(Lim/doit/pro/activity/SelectContactsActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 169
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v4, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    iget-object v5, p0, Lim/doit/pro/activity/SelectContactsActivity$6;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SelectContactsActivity;->access$1(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 182
    iget-object v5, p0, Lim/doit/pro/activity/SelectContactsActivity$6;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v5, v4}, Lim/doit/pro/activity/SelectContactsActivity;->access$9(Lim/doit/pro/activity/SelectContactsActivity;Ljava/util/ArrayList;)V

    .line 183
    iget-object v5, p0, Lim/doit/pro/activity/SelectContactsActivity$6;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SelectContactsActivity;->access$5(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 184
    iget-object v5, p0, Lim/doit/pro/activity/SelectContactsActivity$6;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SelectContactsActivity;->access$11(Lim/doit/pro/activity/SelectContactsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v5, p0, Lim/doit/pro/activity/SelectContactsActivity$6;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SelectContactsActivity;->access$12(Lim/doit/pro/activity/SelectContactsActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :goto_3
    iget-object v5, p0, Lim/doit/pro/activity/SelectContactsActivity$6;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SelectContactsActivity;->access$10(Lim/doit/pro/activity/SelectContactsActivity;)Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;->notifyDataSetChanged()V

    goto :goto_1

    .line 170
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Contact;

    .line 171
    .local v0, "contact":Lim/doit/pro/model/Contact;
    const/4 v3, 0x0

    .local v3, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 172
    .local v1, "email":Ljava/lang/String;
    invoke-virtual {v0}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 173
    invoke-virtual {v0}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 175
    :cond_4
    invoke-virtual {v0}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 176
    invoke-virtual {v0}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 178
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 179
    :cond_7
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 187
    .end local v0    # "contact":Lim/doit/pro/model/Contact;
    .end local v1    # "email":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lim/doit/pro/activity/SelectContactsActivity$6;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SelectContactsActivity;->access$11(Lim/doit/pro/activity/SelectContactsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v5, p0, Lim/doit/pro/activity/SelectContactsActivity$6;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SelectContactsActivity;->access$12(Lim/doit/pro/activity/SelectContactsActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 154
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 150
    return-void
.end method
