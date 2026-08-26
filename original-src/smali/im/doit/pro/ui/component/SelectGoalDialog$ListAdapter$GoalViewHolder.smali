.class Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$GoalViewHolder;
.super Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$ViewHolder;
.source "SelectGoalDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoalViewHolder"
.end annotation


# instance fields
.field public nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$GoalViewHolder;->this$1:Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;

    .line 176
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;Landroid/content/Context;)V

    .line 177
    const v0, 0x7f030058

    invoke-static {p2, v0, p0}, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$GoalViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 178
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$GoalViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$GoalViewHolder;->nameTV:Landroid/widget/TextView;

    .line 179
    return-void
.end method


# virtual methods
.method public setViewContent(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 183
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$GoalViewHolder;->this$1:Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;

    invoke-virtual {v3, p1}, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;->getItem(I)Lim/doit/pro/model/Goal;

    move-result-object v0

    .line 184
    .local v0, "goal":Lim/doit/pro/model/Goal;
    const/4 v2, 0x0

    .line 185
    .local v2, "isSelected":Z
    const v1, 0x7f0200d8

    .line 186
    .local v1, "icon":I
    if-nez v0, :cond_1

    .line 187
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$GoalViewHolder;->this$1:Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;

    invoke-static {v3}, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectGoalDialog;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/ui/component/SelectGoalDialog;->access$0(Lim/doit/pro/ui/component/SelectGoalDialog;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 188
    :goto_0
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$GoalViewHolder;->nameTV:Landroid/widget/TextView;

    const v4, 0x7f0c0038

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 189
    const v1, 0x7f0200da

    .line 194
    :goto_1
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$GoalViewHolder;->nameTV:Landroid/widget/TextView;

    .line 195
    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 194
    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 196
    invoke-virtual {p0, v2}, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$GoalViewHolder;->setSelected(Z)V

    .line 197
    return-void

    .line 187
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$GoalViewHolder;->this$1:Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;

    invoke-static {v4}, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectGoalDialog;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/ui/component/SelectGoalDialog;->access$0(Lim/doit/pro/ui/component/SelectGoalDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 192
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectGoalDialog$ListAdapter$GoalViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
