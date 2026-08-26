.class Lim/doit/pro/activity/FilterListFragment$LoadingFiltersAfterSync;
.super Lim/doit/pro/activity/FilterListFragment$LoadingFilters;
.source "FilterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/FilterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingFiltersAfterSync"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/FilterListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/FilterListFragment;)V
    .locals 1

    .prologue
    .line 162
    iput-object p1, p0, Lim/doit/pro/activity/FilterListFragment$LoadingFiltersAfterSync;->this$0:Lim/doit/pro/activity/FilterListFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;-><init>(Lim/doit/pro/activity/FilterListFragment;Lim/doit/pro/activity/FilterListFragment$LoadingFilters;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/FilterListFragment;Lim/doit/pro/activity/FilterListFragment$LoadingFiltersAfterSync;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lim/doit/pro/activity/FilterListFragment$LoadingFiltersAfterSync;-><init>(Lim/doit/pro/activity/FilterListFragment;)V

    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method
