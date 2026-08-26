.class Lim/doit/pro/ui/component/MoveToDialog$1;
.super Ljava/lang/Object;
.source "MoveToDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/MoveToDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/MoveToDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/MoveToDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isShowTimePicker(Ljava/util/Calendar;)Z
    .locals 5
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x0

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "isShowTimePicker":Z
    iget-object v2, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/MoveToDialog;->access$8(Lim/doit/pro/ui/component/MoveToDialog;)Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/MoveToDialog;->access$8(Lim/doit/pro/ui/component/MoveToDialog;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 211
    iget-object v4, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v4}, Lim/doit/pro/ui/component/MoveToDialog;->access$7(Lim/doit/pro/ui/component/MoveToDialog;)Z

    move-result v4

    .line 210
    invoke-static {v2, v3, v4}, Lim/doit/pro/utils/DateUtils;->beforeOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v2

    .line 211
    if-eqz v2, :cond_0

    .line 212
    const/4 v0, 0x1

    .line 215
    :cond_0
    iget-object v2, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v2, p1}, Lim/doit/pro/ui/component/MoveToDialog;->access$6(Lim/doit/pro/ui/component/MoveToDialog;Ljava/util/Calendar;)V

    .line 216
    iget-object v2, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/MoveToDialog;->access$7(Lim/doit/pro/ui/component/MoveToDialog;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    :cond_1
    :goto_0
    return v1

    .line 219
    :cond_2
    iget-object v2, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/MoveToDialog;->access$13(Lim/doit/pro/ui/component/MoveToDialog;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v0

    .line 220
    goto :goto_0

    .line 222
    :cond_3
    iget-object v2, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/MoveToDialog;->access$7(Lim/doit/pro/ui/component/MoveToDialog;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/MoveToDialog;->access$0(Lim/doit/pro/ui/component/MoveToDialog;)Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, p3, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 145
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/MoveToDialog;->access$4(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;->getItem(I)Lim/doit/pro/ui/component/MoveToDialog$ListItemData;

    move-result-object v0

    .line 146
    .local v0, "data":Lim/doit/pro/ui/component/MoveToDialog$ListItemData;
    iget-object v4, v0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->type:Lim/doit/pro/model/enums/BoxType;

    .line 147
    .local v4, "type":Lim/doit/pro/model/enums/BoxType;
    const/4 v2, 0x1

    .line 148
    .local v2, "isFinish":Z
    sget-object v5, Lim/doit/pro/model/enums/BoxType;->inbox:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v5, v4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    sget-object v6, Lim/doit/pro/model/enums/Attribute;->inbox:Lim/doit/pro/model/enums/Attribute;

    invoke-static {v5, v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$5(Lim/doit/pro/ui/component/MoveToDialog;Lim/doit/pro/model/enums/Attribute;)V

    .line 150
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$6(Lim/doit/pro/ui/component/MoveToDialog;Ljava/util/Calendar;)V

    .line 201
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/MoveToDialog;->access$10(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 202
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/MoveToDialog;->access$10(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$11(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/model/enums/Attribute;

    move-result-object v6

    iget-object v7, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v7}, Lim/doit/pro/ui/component/MoveToDialog;->access$8(Lim/doit/pro/ui/component/MoveToDialog;)Ljava/util/Calendar;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;->finish(Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V

    .line 204
    :cond_1
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/MoveToDialog;->access$12(Lim/doit/pro/ui/component/MoveToDialog;)V

    .line 205
    return-void

    .line 151
    :cond_2
    sget-object v5, Lim/doit/pro/model/enums/BoxType;->today:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v5, v4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 152
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    sget-object v6, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-static {v5, v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$5(Lim/doit/pro/ui/component/MoveToDialog;Lim/doit/pro/model/enums/Attribute;)V

    .line 153
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 154
    .local v1, "defaultDate":Ljava/util/Calendar;
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/MoveToDialog;->access$7(Lim/doit/pro/ui/component/MoveToDialog;)Z

    move-result v5

    invoke-static {v5, v1}, Lim/doit/pro/activity/utils/ViewUtils;->initDefaultStartAt(ZLjava/util/Calendar;)Ljava/util/Calendar;

    .line 155
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/MoveToDialog;->access$8(Lim/doit/pro/ui/component/MoveToDialog;)Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/MoveToDialog;->access$7(Lim/doit/pro/ui/component/MoveToDialog;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 156
    const/16 v5, 0xb

    iget-object v6, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$8(Lim/doit/pro/ui/component/MoveToDialog;)Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 157
    const/16 v5, 0xc

    iget-object v6, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$8(Lim/doit/pro/ui/component/MoveToDialog;)Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 159
    :cond_3
    invoke-direct {p0, v1}, Lim/doit/pro/ui/component/MoveToDialog$1;->isShowTimePicker(Ljava/util/Calendar;)Z

    move-result v3

    .line 160
    .local v3, "isShowTimePicker":Z
    if-eqz v3, :cond_0

    .line 161
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$9(Lim/doit/pro/ui/component/MoveToDialog;Z)V

    .line 162
    const/4 v2, 0x0

    .line 164
    goto :goto_0

    .end local v1    # "defaultDate":Ljava/util/Calendar;
    .end local v3    # "isShowTimePicker":Z
    :cond_4
    sget-object v5, Lim/doit/pro/model/enums/BoxType;->next:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v5, v4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 165
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    sget-object v6, Lim/doit/pro/model/enums/Attribute;->next:Lim/doit/pro/model/enums/Attribute;

    invoke-static {v5, v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$5(Lim/doit/pro/ui/component/MoveToDialog;Lim/doit/pro/model/enums/Attribute;)V

    .line 166
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$6(Lim/doit/pro/ui/component/MoveToDialog;Ljava/util/Calendar;)V

    goto/16 :goto_0

    .line 167
    :cond_5
    sget-object v5, Lim/doit/pro/model/enums/BoxType;->tomorrow:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v5, v4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 168
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    sget-object v6, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-static {v5, v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$5(Lim/doit/pro/ui/component/MoveToDialog;Lim/doit/pro/model/enums/Attribute;)V

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 170
    .restart local v1    # "defaultDate":Ljava/util/Calendar;
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 171
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/MoveToDialog;->access$7(Lim/doit/pro/ui/component/MoveToDialog;)Z

    move-result v5

    invoke-static {v5, v1}, Lim/doit/pro/activity/utils/ViewUtils;->initDefaultStartAt(ZLjava/util/Calendar;)Ljava/util/Calendar;

    .line 172
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/MoveToDialog;->access$8(Lim/doit/pro/ui/component/MoveToDialog;)Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 173
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/MoveToDialog;->access$8(Lim/doit/pro/ui/component/MoveToDialog;)Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v5, v1}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v5

    if-nez v5, :cond_6

    .line 174
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/MoveToDialog;->access$8(Lim/doit/pro/ui/component/MoveToDialog;)Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 176
    :cond_6
    invoke-direct {p0, v1}, Lim/doit/pro/ui/component/MoveToDialog$1;->isShowTimePicker(Ljava/util/Calendar;)Z

    move-result v3

    .line 177
    .restart local v3    # "isShowTimePicker":Z
    if-eqz v3, :cond_0

    .line 178
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$9(Lim/doit/pro/ui/component/MoveToDialog;Z)V

    .line 179
    const/4 v2, 0x0

    .line 181
    goto/16 :goto_0

    .end local v1    # "defaultDate":Ljava/util/Calendar;
    .end local v3    # "isShowTimePicker":Z
    :cond_7
    sget-object v5, Lim/doit/pro/model/enums/BoxType;->scheduled:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v5, v4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 182
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    sget-object v6, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-static {v5, v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$5(Lim/doit/pro/ui/component/MoveToDialog;Lim/doit/pro/model/enums/Attribute;)V

    .line 183
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/MoveToDialog;->access$8(Lim/doit/pro/ui/component/MoveToDialog;)Ljava/util/Calendar;

    move-result-object v5

    if-nez v5, :cond_9

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 185
    .restart local v1    # "defaultDate":Ljava/util/Calendar;
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 186
    invoke-static {}, Lim/doit/pro/utils/BoxUtils;->isTomorrowShow()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 187
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 189
    :cond_8
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/MoveToDialog;->access$7(Lim/doit/pro/ui/component/MoveToDialog;)Z

    move-result v5

    invoke-static {v5, v1}, Lim/doit/pro/activity/utils/ViewUtils;->initDefaultStartAt(ZLjava/util/Calendar;)Ljava/util/Calendar;

    .line 190
    invoke-direct {p0, v1}, Lim/doit/pro/ui/component/MoveToDialog$1;->isShowTimePicker(Ljava/util/Calendar;)Z

    .line 192
    .end local v1    # "defaultDate":Ljava/util/Calendar;
    :cond_9
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$9(Lim/doit/pro/ui/component/MoveToDialog;Z)V

    .line 193
    const/4 v2, 0x0

    .line 194
    goto/16 :goto_0

    :cond_a
    sget-object v5, Lim/doit/pro/model/enums/BoxType;->someday:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v5, v4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 195
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    sget-object v6, Lim/doit/pro/model/enums/Attribute;->noplan:Lim/doit/pro/model/enums/Attribute;

    invoke-static {v5, v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$5(Lim/doit/pro/ui/component/MoveToDialog;Lim/doit/pro/model/enums/Attribute;)V

    .line 196
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$6(Lim/doit/pro/ui/component/MoveToDialog;Ljava/util/Calendar;)V

    goto/16 :goto_0

    .line 197
    :cond_b
    sget-object v5, Lim/doit/pro/model/enums/BoxType;->waiting:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v5, v4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    sget-object v6, Lim/doit/pro/model/enums/Attribute;->waiting:Lim/doit/pro/model/enums/Attribute;

    invoke-static {v5, v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$5(Lim/doit/pro/ui/component/MoveToDialog;Lim/doit/pro/model/enums/Attribute;)V

    .line 199
    iget-object v5, p0, Lim/doit/pro/ui/component/MoveToDialog$1;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lim/doit/pro/ui/component/MoveToDialog;->access$6(Lim/doit/pro/ui/component/MoveToDialog;Ljava/util/Calendar;)V

    goto/16 :goto_0
.end method
