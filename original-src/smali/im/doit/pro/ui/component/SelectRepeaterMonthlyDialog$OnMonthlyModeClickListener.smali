.class Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;
.super Ljava/lang/Object;
.source "SelectRepeaterMonthlyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMonthlyModeClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 263
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v7}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v7

    invoke-virtual {v7}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v7

    invoke-virtual {v7}, Lim/doit/pro/model/RepeaterMonthly;->getDate()Lim/doit/pro/model/RepeaterMonthlyDate;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 264
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v7}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v7

    invoke-virtual {v7}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v4

    .line 267
    .local v4, "monthly":Lim/doit/pro/model/RepeaterMonthly;
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v7}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$6(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v4}, Lim/doit/pro/model/RepeaterMonthly;->getDate()Lim/doit/pro/model/RepeaterMonthlyDate;

    move-result-object v8

    invoke-virtual {v8}, Lim/doit/pro/model/RepeaterMonthlyDate;->getDayOfMonth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lim/doit/pro/utils/RepeaterUtils;->getDayOfMonthByRepeater(Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 268
    .local v1, "dayOfMonth":I
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v7}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$6(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Ljava/util/Calendar;

    move-result-object v7

    invoke-static {v7}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 269
    .local v0, "date":Ljava/util/Calendar;
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 270
    invoke-static {v1}, Lim/doit/pro/utils/RepeaterUtils;->convert2RepeaterWeek(I)I

    move-result v3

    .line 271
    .local v3, "doitWeek":I
    invoke-static {v0}, Lim/doit/pro/utils/RepeaterUtils;->getDoitRepeaterDayOfWeek(Ljava/util/Calendar;)I

    move-result v2

    .line 273
    .local v2, "doitDayOfWeek":I
    new-instance v6, Lim/doit/pro/model/RepeaterMonthlyWeek;

    invoke-direct {v6}, Lim/doit/pro/model/RepeaterMonthlyWeek;-><init>()V

    .line 274
    .local v6, "monthlyWeek":Lim/doit/pro/model/RepeaterMonthlyWeek;
    invoke-virtual {v6, v3}, Lim/doit/pro/model/RepeaterMonthlyWeek;->setWeek(I)V

    .line 275
    invoke-virtual {v6, v2}, Lim/doit/pro/model/RepeaterMonthlyWeek;->setDayOfWeek(I)V

    .line 276
    invoke-virtual {v4, v6}, Lim/doit/pro/model/RepeaterMonthly;->setWeek(Lim/doit/pro/model/RepeaterMonthlyWeek;)V

    .line 277
    invoke-virtual {v4, v10}, Lim/doit/pro/model/RepeaterMonthly;->setDate(Lim/doit/pro/model/RepeaterMonthlyDate;)V

    .line 286
    .end local v1    # "dayOfMonth":I
    .end local v2    # "doitDayOfWeek":I
    .end local v3    # "doitWeek":I
    .end local v6    # "monthlyWeek":Lim/doit/pro/model/RepeaterMonthlyWeek;
    :goto_0
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v7}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$7(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V

    .line 287
    return-void

    .line 279
    .end local v0    # "date":Ljava/util/Calendar;
    .end local v4    # "monthly":Lim/doit/pro/model/RepeaterMonthly;
    :cond_0
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v7}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v7

    invoke-virtual {v7}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v4

    .line 280
    .restart local v4    # "monthly":Lim/doit/pro/model/RepeaterMonthly;
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v7}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$6(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v4}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v8

    invoke-virtual {v8}, Lim/doit/pro/model/RepeaterMonthlyWeek;->getWeek()I

    move-result v8

    invoke-virtual {v4}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v9

    invoke-virtual {v9}, Lim/doit/pro/model/RepeaterMonthlyWeek;->getDayOfWeek()I

    move-result v9

    invoke-static {v7, v8, v9}, Lim/doit/pro/utils/RepeaterUtils;->getDateByRepeaterMonthlyWeek(Ljava/util/Calendar;II)Ljava/util/Calendar;

    move-result-object v0

    .line 281
    .restart local v0    # "date":Ljava/util/Calendar;
    new-instance v5, Lim/doit/pro/model/RepeaterMonthlyDate;

    invoke-direct {v5}, Lim/doit/pro/model/RepeaterMonthlyDate;-><init>()V

    .line 282
    .local v5, "monthlyDate":Lim/doit/pro/model/RepeaterMonthlyDate;
    invoke-static {v0}, Lim/doit/pro/utils/RepeaterUtils;->convert2RepeaterDate(Ljava/util/Calendar;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lim/doit/pro/model/RepeaterMonthlyDate;->setDayOfMonth(I)V

    .line 283
    invoke-virtual {v4, v10}, Lim/doit/pro/model/RepeaterMonthly;->setWeek(Lim/doit/pro/model/RepeaterMonthlyWeek;)V

    .line 284
    invoke-virtual {v4, v5}, Lim/doit/pro/model/RepeaterMonthly;->setDate(Lim/doit/pro/model/RepeaterMonthlyDate;)V

    goto :goto_0
.end method
