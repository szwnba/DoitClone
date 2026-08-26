.class Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;
.super Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$ViewHolder;
.source "SelectRepeatDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RepeatViewHolder"
.end annotation


# instance fields
.field public nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;->this$1:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    .line 162
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;Landroid/content/Context;)V

    .line 163
    const v0, 0x7f030058

    invoke-static {p2, v0, p0}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 164
    const v0, 0x7f020046

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;->setBackgroundResource(I)V

    .line 165
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;->nameTV:Landroid/widget/TextView;

    .line 166
    return-void
.end method


# virtual methods
.method public setViewContent(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 170
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;->this$1:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    invoke-virtual {v2, p1}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->getItem(I)Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;

    move-result-object v1

    .line 171
    .local v1, "item":Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;
    const/4 v0, 0x0

    .line 172
    .local v0, "isSelected":Z
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;->this$1:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRepeatDialog;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeatDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;->this$1:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRepeatDialog;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeatDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getMode()Lim/doit/pro/model/enums/RepeaterMode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;->this$1:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRepeatDialog;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeatDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getMode()Lim/doit/pro/model/enums/RepeaterMode;

    move-result-object v2

    iget-object v3, v1, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;->mode:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 174
    sget-object v2, Lim/doit/pro/model/enums/RepeaterMode;->weekly:Lim/doit/pro/model/enums/RepeaterMode;

    iget-object v3, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;->this$1:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    invoke-static {v3}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRepeatDialog;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeatDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/model/Repeater;->getMode()Lim/doit/pro/model/enums/RepeaterMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const v2, 0x7f0c00a5

    iget v3, v1, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;->name:I

    if-ne v2, v3, :cond_1

    .line 176
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;->this$1:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRepeatDialog;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeatDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getWeekly()Lim/doit/pro/model/RepeaterWeekly;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/RepeaterWeekly;->isWorkday()Z

    move-result v0

    .line 182
    :cond_0
    :goto_0
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;->nameTV:Landroid/widget/TextView;

    iget v3, v1, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;->name:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;->this$1:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRepeatDialog;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$1(Lim/doit/pro/ui/component/SelectRepeatDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 184
    return-void

    .line 177
    :cond_1
    const v2, 0x7f0c00a4

    iget v3, v1, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;->name:I

    if-ne v2, v3, :cond_0

    .line 178
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter$RepeatViewHolder;->this$1:Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRepeatDialog;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeatDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getWeekly()Lim/doit/pro/model/RepeaterWeekly;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/RepeaterWeekly;->isWorkday()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
